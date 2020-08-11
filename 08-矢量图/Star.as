package  {
	import flash.display.Shape;
	import flash.display.Graphics;
	import flash.geom.Point;

	public class Star extends Shape {
		
		private var _size:uint;		// 整个图形的大小
		private var _color:uint;	// 颜色
		private var _vertex:uint;	// 顶点个数
		private var _alfa:Number;	// 透明度
		private var _pointSize:Number;	// 顶点角度大小0-1
		private var g:Graphics; // 从来指代当前类的graphics属性
		private var points:Array; // 存储顶点的信息
		private var ro; // 为了让最终图形始终左右对称而使用的修正值
		public function Star(size = 50, color = 0xff0000, alfa = 1.0, vertex = 5, pointSize = .5) {
			// constructor code
			this._size = size;
			this._color = color;
			this._vertex = vertex;
			this._alfa = alfa;
			this._pointSize = pointSize;
			g = this.graphics; // g指向当前实例的graphics属性
			if (_vertex % 2 == 0) {
				// 顶点个数为偶数
				ro = 0;
			} else {
				ro = Math.PI / (_vertex * 2);
			}
			drawStar();
		}
		
		// 使用getter和setter设置各个属性
		public function set size(size:uint) {
			this._size = size;
			drawStar();
		}
		public function get size():uint {
			return _size;
		}
		public function set color(color:uint) {
			this._color = color;
			drawStar();
		}
		public function get color():uint {
			return _color;
		}
		// 注意在设置_vertex属性，仍然要计算偏移量
		public function set vertex(vertex:uint) {
			this._vertex = vertex;
			if (_vertex % 2 == 0) {
				ro = 0;
			} else {
				ro = Math.PI / (_vertex * 2);
			}
			drawStar();
		}
		public function get vertex():uint {
			return _vertex;
		}
		public function set alfa(alfa:*) {
			this._alfa = alfa;
			drawStar();
		}
		public function get alfa():Number {
			return _alfa;
		}
		public function set pointSize(pointSize:Number) {
			this._pointSize = pointSize;
			drawStar();
		}
		public function get pointSize():Number {
			return _pointSize;
		}
		public function moveTo(x:Number,y:Number):void {
			this.x = x;
			this.y = y;
		}
		private function drawStar() {
			points = new Array();
			for (var i:uint = 0; i < _vertex; i++) {
				var p = new Point();
				var vertexDegree = 360 / _vertex * i * Math.PI / 180 - ro;
				p = Point.polar(_size, vertexDegree);
				points.push(p);
				
				var p2 = new Point();
				var innerDegree = 360 / _vertex * (i + .5) * Math.PI / 180 - ro;
				p2 = Point.polar(_size * _pointSize, innerDegree);
				points.push(p2);
			}
			// 使用lineTo等方法，连接各顶点
			g.clear();
			g.beginFill(_color, _alfa);
			g.moveTo(points[0].x, points[0].y);
			for (i = 1; i < points.length; i++) {				
				g.lineTo(points[i].x, points[i].y);
			}
			g.lineTo(points[0].x, points[0].y);
			g.endFill();
		}
		public function clear():void {
			g.clear();
		}

	}
	
}
