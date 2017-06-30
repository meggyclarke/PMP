class PointsController < ApplicationController

  @programs = Programs.all


  @pcPoints =
  if((20000 - current_user.proint_id.pointsNum) < 20000)
    return "You have " 20000 - current_user.proint_id.pointsNum " points still to go"
  elsif((20000 - current_user.proint_id.pointsNum) > 20000)
    return "You have " ((current_user.proint_id.pointsNum - (current_user.proint_id.pointsNum % 20000))*20 "$ redeemable, and" current_user.proint_id.pointsNum % 20000 " points still to go untill next redeemable"
  elsif(current_user.proint_id.pointsNum / 20000)
    return "You have " (current_user.proint_id.pointsNum / 20000)*20 "$ redeemable"
  else
    return ""
  end

  @indigoPoints =
  if((2500 - current_user.proint_id.pointsNum) < 2500)
    return "You have " 2500 - current_user.proint_id.pointsNum " points still to go"
  elsif(current_user.proint_id.pointsNum === 2500)
    return "You have 5$ redeemable"
  elsif (current_user.proint_id.pointsNum < 4499 && current_user.proint_id.pointsNum > 2500)
    return "You have 5$ redeemable, and " 4499 - current_user.proint_id.pointsNum " points still to go untill next redeemable"
  elsif(current_user.proint_id.pointsNum === 4500)
    return "You have 10$ redeemable"
  elsif(current_user.proint_id.pointsNum < 8499 && current_user.proint_id.pointsNum > 4500)
    return "You have 10$ redeemable, and " 8499 - current_user.proint_id.pointsNum " points still to go untill next redeemable"
  elsif(current_user.proint_id.pointsNum === 8500)
    return "You have 20$ redeemable"
  elsif(current_user.proint_id.pointsNum < 19999 && current_user.proint_id.pointsNum > 8500)
    return "You have 20$ redeemable, and " 19999 - current_user.proint_id.pointsNum " points still to go untill next redeemable"
  elsif(current_user.proint_id.pointsNum === 20000)
    return "You have 50$ redeemable"
  elsif(current_user.proint_id.pointsNum < 34999 && current_user.proint_id.pointsNum > 20000)
    return "You have 50$ redeemable, and " 34999 - current_user.proint_id.pointsNum " points still to go untill next redeemable"
  elsif (current_user.proint_id.pointsNum >= 35000)
    "You have 100$ redeemable"
  else
    return ""
  end

end

private

def program_params
  params.permit(:program_id, :pointsValue, :pointsRedeemValue)
end
