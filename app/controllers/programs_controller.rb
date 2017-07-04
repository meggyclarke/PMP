class PointsController < ApplicationController

  @programs = Programs.all


  @pcPoints =
  if((20000 - pointsNum) < 20000)
    return "You have " 20000 - pointsNum " points still to go"
  elsif((20000 - pointsNum) > 20000)
    return "You have " ((pointsNum - (pointsNum % 20000))*20 "$ redeemable, and" pointsNum % 20000 " points still to go untill next redeemable"
  elsif(pointsNum / 20000)
    return "You have " (pointsNum / 20000)*20 "$ redeemable"
  else
    return ""
  end

  @indigoPoints =
  if((2500 - pointsNum) < 2500)
    return "You have " 2500 - pointsNum " points still to go"
  elsif(pointsNum === 2500)
    return "You have 5$ redeemable"
  elsif (pointsNum < 4499 && pointsNum > 2500)
    return "You have 5$ redeemable, and " 4499 - pointsNum " points still to go untill next redeemable"
  elsif(pointsNum === 4500)
    return "You have 10$ redeemable"
  elsif(pointsNum < 8499 && pointsNum > 4500)
    return "You have 10$ redeemable, and " 8499 - pointsNum " points still to go untill next redeemable"
  elsif(pointsNum === 8500)
    return "You have 20$ redeemable"
  elsif(pointsNum < 19999 && pointsNum > 8500)
    return "You have 20$ redeemable, and " 19999 - pointsNum " points still to go untill next redeemable"
  elsif(pointsNum === 20000)
    return "You have 50$ redeemable"
  elsif(pointsNum < 34999 && pointsNum > 20000)
    return "You have 50$ redeemable, and " 34999 - pointsNum " points still to go untill next redeemable"
  elsif (pointsNum >= 35000)
    "You have 100$ redeemable"
  else
    return "Went wrong"
  end

end

private

def program_params
  params.permit(:program_id, :pointsValue, :pointsRedeemValue)
end
