import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ytb_notes/src/presenter/theme/theme_custom.dart';

/// Состояния кнопки, которые контроллируются [_Detector]
enum MyButtonState { up, down, cancel, pressed, focused, hovered }

/// Базовый класс для кнопок,
/// для простоты рекомендуется использовать
/// [MyFilledButton], [MyFlatButton]
///
class MyButton extends StatefulWidget {
  const MyButton({
    super.key,
    this.text,
    this.onPressed,
    this.disabled = false,
    this.style,
    this.backgroundColor,
    this.foregroundColor,
    this.leftIcon,
    this.rightIcon,
    this.paddingIcon,
    this.height,
    this.width,
    this.expanded = true,
    this.border,
  });

  /// текст кнопки (максимум 2 строки)
  final String? text;

  /// Нажатие кнопки
  final void Function()? onPressed;

  /// Запрет нажатия
  final bool disabled;

  /// Стиль текста [text]
  final TextStyle? style;

  /// Цвет фона
  final Color? backgroundColor;

  /// Цвет переднего плана (иконки и текст, если не определен [style])
  final Color? foregroundColor;

  /// Иконка слева от текста
  final IconData? leftIcon;

  /// Иконка справа от текста
  final IconData? rightIcon;

  /// Расстояние между иконкой и текстом, если не задано берет из темы
  /// [CustomButton.paddingIcon]
  final double? paddingIcon;

  /// Высота кнопки
  final double? height;

  /// Ширина кнопки
  final double? width;

  /// Расширять на максимум (false по ширине данных)
  /// default = true
  final bool expanded;

  /// Бордюр вокруг кнопки
  final Border? border;

  @override
  State<MyButton> createState() => _MyButtonState();

  /// Цвет фона (может зависеть от состояния)
  Color? getBackgroundColor(BuildContext context, MyButtonState state) =>
      backgroundColor;

  /// Цвет переднего плана (может зависеть от состояния)
  Color? getForegroundColor(BuildContext context, MyButtonState state) =>
      foregroundColor;

  /// Стиль текста (может зависеть от состояния)
  /// Если не задан, цвет для текста [foregroundColor]
  ///
  TextStyle? getStyle(BuildContext context, MyButtonState state) => style;

  /// Бордюр вокруг кнопки (может зависеть от состояния)
  Border? getBorder(BuildContext context, MyButtonState state) => null;

  /// Обертка, используется если нужна трансформация кнопки
  Widget wrapContainer({
    required BuildContext context,
    required Stream<MyButtonState> stream,
    required Widget child,
  }) {
    return disabled
        ? (expanded
            ? SizedBox(width: double.infinity, child: child)
            : Center(child: child))
        : MyScalableContainer(
            streamState: stream,
            child: (expanded
                ? SizedBox(width: double.infinity, child: child)
                : Center(child: child)),
          );
  }

  /// Обертка, используется если нужен не стандартный вид кнопки
  Widget bodyContainer(
    BuildContext context, {
    String? text,
    TextStyle? style,
    Color? backgroundColor,
    Color? foregroundColor,
    IconData? leftIcon,
    IconData? rightIcon,
    EdgeInsetsGeometry? padding,
    double? paddingIcon,
    double? sizeIcon,
    double? width,
    double? height,
    bool? disabled,
    Border? border,
    double? radius,
  }) {
    return _Body(
      height: height ?? context.themeCustom.button.height,
      width: width,
      radius: context.themeCustom.button.radius,
      disabled: disabled ?? true,
      text: text,
      border: border,
      style: style,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      sizeIcon: context.themeCustom.button.sizeIcon,
      padding: context.themeCustom.button.padding,
      paddingIcon: paddingIcon ?? context.themeCustom.button.paddingIcon,
    );
  }
}

class _MyButtonState extends State<MyButton> {
  /// Контроллер состояний
  /// получает данные из [_Detector]
  /// Используется виджетами предками через [wrapContainer]
  /// Используется дочерними виджетами через StreamBuilder
  late final StreamController<MyButtonState> _controller;

  @override
  void initState() {
    _controller = StreamController.broadcast();
    super.initState();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Анимация
    return widget.wrapContainer(
      context: context,
      stream: _controller.stream,
      // Контроллер нажатий
      child: _Detector(
        onPressed: widget.onPressed,
        controller: _controller,
        radius: context.themeCustom.button.radius,
        child: StreamBuilder<MyButtonState>(
            stream: _controller.stream,
            builder: (context, snapshot) {
              final MyButtonState state = snapshot.hasData
                  ? snapshot.data ?? MyButtonState.up
                  : MyButtonState.up;
              // Виджет центральной части
              return widget.bodyContainer(
                context,
                height: widget.height ?? context.themeCustom.button.height,
                width: widget.width,
                radius: context.themeCustom.button.radius,
                disabled: widget.disabled,
                text: widget.text,
                border: widget.getBorder(context, state),
                style: widget.getStyle(context, state),
                foregroundColor: widget.getForegroundColor(context, state),
                backgroundColor: widget.getBackgroundColor(context, state),
                leftIcon: widget.leftIcon,
                rightIcon: widget.rightIcon,
                sizeIcon: context.themeCustom.button.sizeIcon,
                padding: context.themeCustom.button.padding,
                paddingIcon: widget.paddingIcon ??
                    context.themeCustom.button.paddingIcon,
              );
            }),
      ),
    );
  }
}

/// Детектирование нажатия и контроль состояний
/// подробное описание в [RawMaterialButton]
///
class _Detector extends StatelessWidget {
  const _Detector({
    required this.child,
    this.onPressed,
    this.controller,
    this.radius,
  });

  final Widget? child;
  final StreamController<MyButtonState>? controller;
  final VoidCallback? onPressed;
  final double? radius;

  bool get enabled => onPressed != null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      canRequestFocus: enabled,
      overlayColor: MaterialStateProperty.all<Color?>(Colors.transparent),
      onHighlightChanged: (r) => r
          ? controller?.add(MyButtonState.pressed)
          : controller?.add(MyButtonState.up),
      onFocusChange: (r) => r
          ? controller?.add(MyButtonState.focused)
          : controller?.add(MyButtonState.up),
      onHover: (r) => r
          ? controller?.add(MyButtonState.hovered)
          : controller?.add(MyButtonState.up),
      onTap: onPressed,
      onTapDown: (_) => controller?.add(MyButtonState.down),
      onTapUp: (_) => controller?.add(MyButtonState.up),
      onTapCancel: () => controller?.add(MyButtonState.cancel),
      borderRadius: radius != null
          ? BorderRadius.all(
              Radius.circular(radius!),
            )
          : null,
      child: child,
    );
  }
}

/// Виджет - строка внутри кнопки
class _Body extends StatelessWidget {
  const _Body({
    this.padding,
    this.text,
    this.style,
    this.foregroundColor,
    this.leftIcon,
    this.rightIcon,
    this.paddingIcon,
    this.sizeIcon,
    this.backgroundColor,
    this.height,
    this.width,
    this.disabled = false,
    this.radius,
    this.border,
  }) : assert(text != null || leftIcon != null || rightIcon != null);
  final String? text;

  final TextStyle? style;
  final Color? backgroundColor;
  final Color? foregroundColor;

  final IconData? leftIcon;
  final IconData? rightIcon;

  final EdgeInsetsGeometry? padding;
  final double? paddingIcon;
  final double? sizeIcon;

  final double? width;
  final double? height;

  final bool disabled;
  final Border? border;
  final double? radius;

  bool get onlyIcon => text == null;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 0),
        ),
        border: border, //Border.fromBorderSide(_side),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (leftIcon != null)
              Padding(
                padding:
                    EdgeInsets.only(right: onlyIcon ? 0 : paddingIcon ?? 0),
                child: Icon(
                  leftIcon!,
                  color: foregroundColor,
                  size: sizeIcon,
                ),
              ),
            if (text != null)
              Text(
                text!,
                style: style,
                softWrap: false,
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            if (rightIcon != null)
              Padding(
                padding: EdgeInsets.only(left: onlyIcon ? 0 : paddingIcon ?? 0),
                child: Icon(
                  rightIcon!,
                  color: foregroundColor,
                  size: sizeIcon,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Масштабирование
class MyScalableContainer extends StatefulWidget {
  const MyScalableContainer({
    super.key,
    required this.child,
    required this.streamState,
  });

  final Widget child;
  final Stream<MyButtonState> streamState;

  @override
  State<MyScalableContainer> createState() => _MyScalableContainerState();
}

class _MyScalableContainerState extends State<MyScalableContainer>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final StreamSubscription<MyButtonState> _subscription;

  MyButtonState buttonState = MyButtonState.up;
  AnimationStatus buttonAnimationStatus = AnimationStatus.completed;

  void _listener() {
    setState(() {});
  }

  void _statusListener(AnimationStatus status) {
    buttonAnimationStatus = status;
    if (status == AnimationStatus.completed &&
        mounted &&
        buttonState != MyButtonState.down) {
      _controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    _subscription = widget.streamState.listen(_stateListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = AnimationController(
      vsync: this,
      duration: context.themeCustom.button.duration,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: context.themeCustom.button.sizeScale,
    ).animate(_controller);
    _animation.addListener(_listener);
    _animation.addStatusListener(_statusListener);
  }

  @override
  void dispose() {
    _animation.removeListener(_listener);
    _animation.removeStatusListener(_statusListener);
    _controller.dispose();
    _subscription.cancel();
    super.dispose();
  }

  void _reverseAnimation() {
    if (buttonAnimationStatus == AnimationStatus.forward) return;
    _controller.reverse();
  }

  void _forwardAnimation() {
    _controller.forward();
  }

  void _stateListener(MyButtonState state) {
    buttonState = state;
    switch (state) {
      case MyButtonState.up:
        _reverseAnimation();
        break;
      case MyButtonState.down:
        _forwardAnimation();
        break;
      case MyButtonState.cancel:
        _reverseAnimation();
        break;
      case MyButtonState.pressed:
      case MyButtonState.focused:
      case MyButtonState.hovered:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: _animation.value,
      child: widget.child,
    );
  }
}

class MyFilledButton extends MyButton {
  const MyFilledButton({
    super.key,
    super.text,
    super.onPressed,
    super.leftIcon,
    super.rightIcon,
    super.height,
    super.width,
    super.expanded = true,
    super.backgroundColor,
    super.foregroundColor,
    super.style,
  });

  @override
  bool get disabled => onPressed == null;

  @override
  TextStyle getStyle(BuildContext context, MyButtonState state) {
    if (disabled) {
      return context.themeCustom.text.textAccent
          .apply(color: context.themeCustom.colors.greyText);
    } else {
      return style ??
          context.themeCustom.text.h2.apply(
              color: foregroundColor ?? context.themeCustom.colors.white);
    }
  }

  @override
  Color? getBackgroundColor(
    BuildContext context,
    MyButtonState state,
  ) {
    return disabled
        ? backgroundColor ?? context.themeCustom.colors.greyLight
        : backgroundColor ?? context.themeCustom.colors.blackText;
  }

  @override
  Color? getForegroundColor(BuildContext context, MyButtonState state) {
    return disabled
        ? foregroundColor ?? context.themeCustom.colors.greyText
        : foregroundColor ?? context.themeCustom.colors.white;
  }

  /// Анимация изменения размера и параметров тени кнопки
  @override
  Widget wrapContainer({
    required BuildContext context,
    required Stream<MyButtonState> stream,
    required Widget child,
  }) {
    return disabled
        ? super.wrapContainer(context: context, stream: stream, child: child)
        : _AnimatedShadowContainer(
            streamState: stream,
            begShadow: context.themeCustom.button.defaultShadow,
            endShadow: context.themeCustom.button.pressShadow,
            child: super
                .wrapContainer(context: context, stream: stream, child: child));
  }
}

/// Анимация теней
///  Анимированы параметры: BoxShadow(
///     color: Color.opacity,
///     offset: Offset(x,y),
///     blurRadius: blurRadius,
///     spreadRadius: spreadRadius,
///   )
class _AnimatedShadowContainer extends StatefulWidget {
  const _AnimatedShadowContainer({
    required this.child,
    required this.streamState,
    required this.begShadow,
    required this.endShadow,
  });

  /// Масштабируемый виджет
  final Widget child;

  /// поток состояний
  final Stream<MyButtonState> streamState;

  /// Начальное значение тени
  final BoxShadow begShadow;

  /// Конечное значение тени
  final BoxShadow endShadow;

  @override
  _AnimatedShadowContainerState createState() =>
      _AnimatedShadowContainerState();
}

class _AnimatedShadowContainerState extends State<_AnimatedShadowContainer>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final StreamSubscription<MyButtonState> _subscription;
  BoxShadow get shadow => widget.begShadow;

  late final Animation<double>? _animation;
  late final double kfOpacity;
  late final double kfOffsetX;
  late final double kfOffsetY;
  late final double kfBlurRadius;
  late final double kfSpreadRadius;

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _subscription = widget.streamState.listen(_stateListener);
  }

  void _stateListener(MyButtonState state) {
    switch (state) {
      case MyButtonState.up:
        _controller.reverse();
        break;
      case MyButtonState.down:
        _controller.forward();
        break;
      case MyButtonState.cancel:
        _controller.reverse();
        break;
      case MyButtonState.pressed:
        break;
      case MyButtonState.focused:
        break;
      case MyButtonState.hovered:
        break;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = AnimationController(
      vsync: this,
      duration: context.themeCustom.button.duration,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
    _animation?.addListener(() => setState(() {}));
    kfOpacity = shadow.color.opacity - widget.endShadow.color.opacity;
    kfOffsetX = shadow.offset.dx - widget.endShadow.offset.dx;
    kfOffsetY = shadow.offset.dy - widget.endShadow.offset.dy;
    kfBlurRadius = shadow.blurRadius - widget.endShadow.blurRadius;
    kfSpreadRadius = shadow.spreadRadius - widget.endShadow.spreadRadius;
  }

  @override
  void dispose() {
    _subscription.cancel();
    _animation?.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  double _signMul(double x, double k) {
    return x - k * (_animation?.value ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadow.color
                .withOpacity(_signMul(shadow.color.opacity, kfOpacity)),
            offset: Offset(_signMul(shadow.offset.dx, kfOffsetX),
                _signMul(shadow.offset.dy, kfOffsetY)),
            blurRadius: _signMul(shadow.blurRadius, kfBlurRadius),
            spreadRadius: _signMul(shadow.spreadRadius, kfSpreadRadius),
          )
        ],
      ),
      child: widget.child,
    );
  }
}

class MyFlatButton extends MyButton {
  const MyFlatButton({
    super.key,
    super.text,
    super.onPressed,
    super.leftIcon,
    super.rightIcon,
    super.height,
    super.width,
    super.expanded = true,
    super.backgroundColor,
    super.foregroundColor,
    super.paddingIcon,
    super.style,
  });

  @override
  bool get disabled => onPressed == null;

  @override
  TextStyle getStyle(BuildContext context, MyButtonState state) {
    return disabled
        ? context.themeCustom.text.text
            .apply(color: foregroundColor?.withOpacity(0.5))
        : context.themeCustom.text.text.apply(color: foregroundColor);
  }

  @override
  Color? getBackgroundColor(BuildContext context, MyButtonState state) {
    final baseColor = backgroundColor ?? context.themeCustom.colors.greyText;
    Color? color;
    if (disabled) {
      color = baseColor.withOpacity(0.2);
    } else {
      switch (state) {
        case MyButtonState.up:
          color = baseColor.withOpacity(0.2);
          break;
        case MyButtonState.cancel:
          color = baseColor.withOpacity(0.3);
          break;
        case MyButtonState.focused:
          color = baseColor.withOpacity(0.3);
          break;
        case MyButtonState.hovered:
          color = baseColor.withOpacity(0.6);
          break;
        case MyButtonState.pressed:
          color = baseColor;
          break;
        case MyButtonState.down:
          color = baseColor;
          break;
      }
    }
    return color;
  }

  @override
  Color? getForegroundColor(BuildContext context, MyButtonState state) {
    final baseColor = foregroundColor ?? context.themeCustom.colors.greyText;
    return disabled ? baseColor.withOpacity(0.4) : baseColor;
  }

  @override
  Border? getBorder(BuildContext context, MyButtonState state) {
    if (state != MyButtonState.focused) {
      return null;
    } else {
      return Border.fromBorderSide(
        BorderSide(
          color: (foregroundColor ??
                  style?.color ??
                  context.themeCustom.colors.blackText)
              .withOpacity(0.5),
        ),
      );
    }
  }
}
