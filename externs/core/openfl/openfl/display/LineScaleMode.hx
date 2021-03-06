package openfl.display; #if (display || !flash)


/**
 * The LineScaleMode class provides values for the <code>scaleMode</code>
 * parameter in the <code>Graphics.lineStyle()</code> method.
 */
@:enum abstract LineScaleMode(Null<Int>) {
	
	/**
	 * With this setting used as the <code>scaleMode</code> parameter of the
	 * <code>lineStyle()</code> method, the thickness of the line scales
	 * <i>only</i> vertically. For example, consider the following circles, drawn
	 * with a one-pixel line, and each with the <code>scaleMode</code> parameter
	 * set to <code>LineScaleMode.VERTICAL</code>. The circle on the left is
	 * scaled only vertically, and the circle on the right is scaled both
	 * vertically and horizontally.
	 */
	public var HORIZONTAL = 0;
	
	/**
	 * With this setting used as the <code>scaleMode</code> parameter of the
	 * <code>lineStyle()</code> method, the thickness of the line never scales.
	 */
	public var NONE = 1;
	
	/**
	 * With this setting used as the <code>scaleMode</code> parameter of the
	 * <code>lineStyle()</code> method, the thickness of the line always scales
	 * when the object is scaled(the default).
	 */
	public var NORMAL = 2;
	
	/**
	 * With this setting used as the <code>scaleMode</code> parameter of the
	 * <code>lineStyle()</code> method, the thickness of the line scales
	 * <i>only</i> horizontally. For example, consider the following circles,
	 * drawn with a one-pixel line, and each with the <code>scaleMode</code>
	 * parameter set to <code>LineScaleMode.HORIZONTAL</code>. The circle on the
	 * left is scaled only horizontally, and the circle on the right is scaled
	 * both vertically and horizontally.
	 */
	public var VERTICAL = 3;
	
	@:from private static function fromString (value:String):LineScaleMode {
		
		return switch (value) {
			
			case "horizontal": HORIZONTAL;
			case "none": NONE;
			case "normal": NORMAL;
			case "vertical": VERTICAL;
			default: null;
			
		}
		
	}
	
	@:to private static function toString (value:Int):String {
		
		return switch (value) {
			
			case LineScaleMode.HORIZONTAL: "horizontal";
			case LineScaleMode.NONE: "none";
			case LineScaleMode.NORMAL: "normal";
			case LineScaleMode.VERTICAL: "vertical";
			default: null;
			
		}
		
	}
	
}


#else
typedef LineScaleMode = flash.display.LineScaleMode;
#end