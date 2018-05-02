class WelcomeController < ApplicationController
    http_basic_authenticate_with name: "steph", password: "boss", except: [ :index]

    def index
    end
end
