package  {
	// 使用extends关键字，定义类继承类B
	public class A extends B {
		public var m:Number = 200;
		
		// 构造函数接收字符串参数，默认值为null
		public function A(type:String = null) {
			switch(type) {
				// 当type是French时，调用类B的构造函数
				case "French":
					super();
					break;
				// 当type是其他值时，调用类B的sayHi函数
				default:
					super.sayHi();
			}
		}
		
		// 覆盖B类中的方法sayHi
		override public function sayHi():void {
			trace("Bonjour.");
			// 使用super调用父类的构造函数
			// super.sayHi();
		}
	}
	
}
 