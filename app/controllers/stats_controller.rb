class StatsController < ApplicationController

def index
@shorts = Short.all
end

end
