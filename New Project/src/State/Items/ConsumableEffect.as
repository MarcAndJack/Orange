package State.Items 
{
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Jack
	 */
	public class ConsumableEffect 
	{
		protected var m_effects:Dictionary;
		protected var m_uses:int;
				
		
		public function ConsumableEffect() 
		{
			
		}
		
		public function get effects():Dictionary
		{
			m_uses--;
			if (m_uses < 0)
			{
				return null;
			}
			else
			{
				return m_effects;
			}
		}
	}

}