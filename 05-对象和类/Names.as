package {
	public class Names {
		// 分别使用2个不同的命名空间定义同名属性，并赋予不同的值
		namespace1 var score = 100;
		namespace2 var score = 60;
		// 分别使用2个不同的命名空间定义同名方法
		namespace1 function respond() {
			trace("我是" + namespace1 + "的李伟, 我得了" + namespace1::score + "分");
		}
		namespace2 function respond() {
			trace("我是" + namespace2 + "的李伟,我得了" + namespace2::score + "分");
		}
	}
}