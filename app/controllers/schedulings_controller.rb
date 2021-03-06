class SchedulingsController < ApplicationController
  before_action :set_scheduling, only: [:show, :edit, :update, :destroy, :editEntry, :clear, :changeDates]

  respond_to :html

  def index
    @schedulings = Scheduling.all
    respond_with(@schedulings)
  end

  def show
    respond_with(@scheduling)
  end

  def new
    @scheduling = Scheduling.new
    respond_with(@scheduling)
  end

  def edit
  end

  def editEntry
    @num = params[:id2].to_s
  end

  def create
    @scheduling = Scheduling.new(scheduling_params)
    @scheduling.save
    respond_with(@scheduling)
  end

  def clear
    @scheduling= Scheduling.find(params[:id])
    @num = params[:id2].to_s
    @typeString = "type#{@num}"
    @descString = "description#{@num}"
    @timeString = "time#{@num}"
    @priorityString = "priority#{@num}"
    @scheduling.update_column(@typeString, "reset")
    @scheduling.update_column(@descString, "")
    @scheduling.update_column(@timeString, "")
    @scheduling.update_column(@priorityString, "")
    @scheduling.save
    redirect_to edit_scheduling_path(@scheduling)
  end

  def changeDates
  end

  def update
    @scheduling.update(scheduling_params)

    #@counter = 1
    #while(@counter < 76)
    #  @tempTime = "time#{@counter}"
    #  if(@scheduling.pluck(@tempTime) != nil && @scheduling.@tempTime != "" )
        
    #    @dateTemp = @scheduling.@tempTime
    #    @array = @dateTemp.split('/')
    #    @dateString = "#{@array[2]}-#{@array[0]}-#{@array[1]}"
    #    @tempDay = "day#{@counter}"
    #    @tempMonth = "month#{@counter}"
    #    @tempYear = "year#{@counter}"
    #    @scheduling.@tempDay = Integer(@array[1])
    #    @scheduling.@tempMonth = Integer(@array[0])
    #    @scheduling.@tempYear = Integer(@array[2])
    #  end
    #  @counter = @counter + 1
    #end

    #@scheduling.save

    redirect_to edit_scheduling_path(@scheduling)
  end

  def destroy
    @scheduling.destroy
    respond_with(@scheduling)
  end

  private
    def set_scheduling
      @scheduling = Scheduling.find(params[:id])
    end

    def scheduling_params
      params.require(:scheduling).permit(:day1, :month1, :year1, :type1, :description1, :priority1, :day2, :month2, :year2, :type2, :description2, :priority2, :day3, :month3, :year3, :type3, :description3, :priority3, :day4, :month4, :year4, :type4, :description4, :priority4, :day5, :month5, :year5, :type5, :description5, :priority5, :day6, :month6, :year6, :type6, :description6, :priority6, :day7, :month7, :year7, :type7, :description7, :priority7, :day8, :month8, :year8, :type8, :description8, :priority8, :day9, :month9, :year9, :type9, :description9, :priority9, :day10, :month10, :year10, :type10, :description10, :priority10, :day11, :month11, :year11, :type11, :description11, :priority11, :day12, :month12, :year12, :type12, :description12, :priority12, :day13, :month13, :year13, :type13, :description13, :priority13, :day14, :month14, :year14, :type14, :description14, :priority14, :day15, :month15, :year15, :type15, :description15, :priority15, :day16, :month16, :year16, :type16, :description16, :priority16, :day17, :month17, :year17, :type17, :description17, :priority17, :day18, :month18, :year18, :type18, :description18, :priority18, :day19, :month19, :year19, :type19, :description19, :priority19, :day20, :month20, :year20, :type20, :description20, :priority20, :day21, :month21, :year21, :type21, :description21, :priority21, :day22, :month22, :year22, :type22, :description22, :priority22, :day23, :month23, :year23, :type23, :description23, :priority23, :day24, :month24, :year24, :type24, :description24, :priority24, :day25, :month25, :year25, :type25, :description25, :priority25, :day26, :month26, :year26, :type26, :description26, :priority26, :day27, :month27, :year27, :type27, :description27, :priority27, :day28, :month28, :year28, :type28, :description28, :priority28, :day29, :month29, :year29, :type29, :description29, :priority29, :day30, :month30, :year30, :type30, :description30, :priority30, :day31, :month31, :year31, :type31, :description31, :priority31, :day32, :month32, :year32, :type32, :description32, :priority32, :day33, :month33, :year33, :type33, :description33, :priority33, :day34, :month34, :year34, :type34, :description34, :priority34, :day35, :month35, :year35, :type35, :description35, :priority35, :day36, :month36, :year36, :type36, :description36, :priority36, :day37, :month37, :year37, :type37, :description37, :priority37, :day38, :month38, :year38, :type38, :description38, :priority38, :day39, :month39, :year39, :type39, :description39, :priority39, :day40, :month40, :year40, :type40, :description40, :priority40, :day41, :month41, :year41, :type41, :description41, :priority41, :day42, :month42, :year42, :type42, :description42, :priority42, :day43, :month43, :year43, :type43, :description43, :priority43, :day44, :month44, :year44, :type44, :description44, :priority44, :day45, :month45, :year45, :type45, :description45, :priority45, :day46, :month46, :year46, :type46, :description46, :priority46, :day47, :month47, :year47, :type47, :description47, :priority47, :day48, :month48, :year48, :type48, :description48, :priority48, :day49, :month49, :year49, :type49, :description49, :priority49, :day50, :month50, :year50, :type50, :description50, :priority50, :day51, :month51, :year51, :type51, :description51, :priority51, :day52, :month52, :year52, :type52, :description52, :priority52, :day53, :month53, :year53, :type53, :description53, :priority53, :day54, :month54, :year54, :type54, :description54, :priority54, :day55, :month55, :year55, :type55, :description55, :priority55, :day56, :month56, :year56, :type56, :description56, :priority56, :day57, :month57, :year57, :type57, :description57, :priority57, :day58, :month58, :year58, :type58, :description58, :priority58, :day59, :month59, :year59, :type59, :description59, :priority59, :day60, :month60, :year60, :type60, :description60, :priority60, :day61, :month61, :year61, :type61, :description61, :priority61, :day62, :month62, :year62, :type62, :description62, :priority62, :day63, :month63, :year63, :type63, :description63, :priority63, :day64, :month64, :year64, :type64, :description64, :priority64, :day65, :month65, :year65, :type65, :description65, :priority65, :day66, :month66, :year66, :type66, :description66, :priority66, :day67, :month67, :year67, :type67, :description67, :priority67, :day68, :month68, :year68, :type68, :description68, :priority68, :day69, :month69, :year69, :type69, :description69, :priority69, :day70, :month70, :year70, :type70, :description70, :priority70, :day71, :month71, :year71, :type71, :description71, :priority71, :day72, :month72, :year72, :type72, :description72, :priority72, :day73, :month73, :year73, :type73, :description73, :priority73, :day74, :month74, :year74, :type74, :description74, :priority74, :day75, :month75, :year75, :type75, :description75, :priority75, :time1, :time2, :time3, :time4, :time5, :time6, :time7, :time8, :time9, :time10, :time11, :time12, :time13, :time14, :time15, :time16, :time17, :time18, :time19, :time20, :time21, :time22, :time23, :time24, :time25, :time26, :time27, :time28, :time29, :time30, :time31, :time32, :time33, :time34, :time35, :time36, :time37, :time38, :time39, :time40, :time41, :time42, :time43, :time44, :time45, :time46, :time47, :time48, :time49, :time50, :time51, :time52, :time53, :time54, :time55, :time56, :time57, :time58, :time59, :time60, :time61, :time62, :time63, :time64, :time65, :time66, :time67, :time68, :time69, :time70, :time71, :time72, :time73, :time74, :time75, :startDate, :endDate)
    end
end
