class StaticPagesController < ApplicationController
  def home
  end

  def help
    # @q_and_a = {"4x1?"=>"4", "4x2?"=>"8", "8/2(2+2)"=>"16? or 1?"}
    # @q_and_a = {:4x1?=>"4", :4x2?=>"8", :8/2(2+2)=>"16? or 1?"}
    @q_and_a = {"4x1?":"4", "4x2?":"8", "8/2(2+2)":"16? or 1?"}
  end
end
