//package  {
//	
//	public class Dog extends Pet {
//	
//		public function Dog() {
//			// constructor code
//		}
//		
//		override public function action() {
//			trace("汪汪叫");
//		}

//	}
//	
//}



// 继承自Pet，并实现了IPet，IPetCopy接口
package {
	public class Dog extends Pet implements IPet, IPetCopy {
		public function Dog(name:String = null) {
			// 在构造函数中，传递参数为小狗的名字
			this.name = name;
			super();
		}
		
		// 覆盖原有的action方法
		override public function action() {
			trace("汪汪叫");
		}
		
		// 实现接口的eat方法
		public function eat() {
			trace(this.master + "喂" + this.name + "吃东西");
		}
		// 实现接口的sleep方法
		public function sleep() {
			trace(this.name + "睡着了");
		}
		// 实现接口的run方法
		public function run() {
			trace(this.name + "欢快地跳着");
		}
		// 实现IPetCopy接口的copy方法
		public function copy() {
			trace("copy");
		}
	}
}









