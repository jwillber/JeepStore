package cn.jeep.CarBean;


import java.util.List;



public class detailsCar extends Car{
		//配置信息
		private List<carPeizhi> peizhi;
		//颜色信息
		private List<peizhiColor> pandc;
		//配置图片
		private List<carImg> liimg;
		//详细配置信息
		private List<xCarImg> liximg;
		

		public List<carPeizhi> getPeizhi() {
			return peizhi;
		}
		public void setPeizhi(List<carPeizhi> peizhi) {
			this.peizhi = peizhi;
		}
		public List<peizhiColor> getPandc() {
			return pandc;
		}
		public void setPandc(List<peizhiColor> pandc) {
			this.pandc = pandc;
		}
		public List<carImg> getLiimg() {
			return liimg;
		}
		public void setLiimg(List<carImg> liimg) {
			this.liimg = liimg;
		}
		public List<xCarImg> getLiximg() {
			return liximg;
		}
		public void setLiximg(List<xCarImg> liximg) {
			this.liximg = liximg;
		}
		@Override
		public String toString() {
			return "detailsCar [peizhi=" + peizhi + ", pandc=" + pandc + ", liimg=" + liimg + ", liximg=" + liximg
					+ "]";
		}
		
		public String fatherString(){
			return super.toString();
		}
}
