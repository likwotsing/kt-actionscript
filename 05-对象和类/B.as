package  {
	
	public class B {
		// 声明一个public属性的数值型变量n，赋值100
		public var n:Number = 100;
		// 静态变量，不能被继承
		public static var j:Number = 100;
		public function B():void {
			// constructor code
			// trace("我是类B");
			sayHi();
		}
		
		public function sayHi():void {
			trace("Hello");
		}

	}
	
}
