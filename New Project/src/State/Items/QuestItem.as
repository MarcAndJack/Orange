package State.Items 
{
	/**
	 * ...
	 * @author Jack
	 */
	public class QuestItem extends Item
	{
		protected var m_questKey:String;
		
		public function QuestItem() 
		{
			
		}
		
		/**
		 * returns the questKey
		 */
		public function get m_questKey():String
		{
			return m_questKey;
		}
		
	}

}