package State.Items 
{
	/**
	 * ...
	 * @author Jack
	 */
	public class Item 
	{
		protected var m_name:String;
		protected var m_description:String;
		
		public function Item() 
		{
			
		}
		
		/**
		 * returns the name of this item
		 */
		public function get name():String
		{
			return m_name;
		}
		
		/**
		 * returns the description
		 */
		public function get description():String
		{
			return m_description;
		}
		
	}

}