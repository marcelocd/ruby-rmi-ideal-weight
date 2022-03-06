require 'drb/drb'

class IdealWeightCalculator
  def ideal_weight gender, height
    case gender
    when 'f'
      ((62.1 * height) - 44.7).round(3)
    when 'm'
      ((72.7 * height) - 58).round(3)
    else
      'Invalid gender or height'
    end
  end
end

object = IdealWeightCalculator.new

DRb.start_service('druby://localhost:9999', object)
DRb.thread.join