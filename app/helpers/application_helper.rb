module ApplicationHelper
  def format_time(time)
    time.strftime("%Y/%m/%d %H:%M")
  end

  def cn_time(time)
    time_range = time.strftime("%p") == "AM" ? "上午" : "下午" 
    weekday = get_weekday(time.strftime("%w"))
    time.strftime("%m月%d日 #{weekday} %H : %M ")
  end

  def get_weekday(number)
    case number.to_i
    when 0
      "星期日"
    when 1
      "星期一"
    when 2
      "星期二"
    when 3
      "星期三"
    when 4
      "星期四"
    when 5
      "星期五"
    when 6
      "星期六"
    end
  end
end
