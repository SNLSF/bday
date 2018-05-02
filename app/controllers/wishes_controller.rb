class WishesController < ApplicationController

    http_basic_authenticate_with name: "steph", password: "boss", except: [ :new, :show, :edit, :create, :update, :destroy ]

    def index
        @wishes = Wish.all
    end

    def show
        @wish = Wish.find(params[:id])
    end

    def new
        @wish = Wish.new
    end

    def edit
        @wish = Wish.find(params[:id])
    end

    def create
        @wish = Wish.new(wish_params)

        if @wish.save
            redirect_to @wish
        else
            render 'new'
        end
    end

    def update
        @wish = Wish.find(params[:id])

        if @wish.update(wish_params)
            redirect_to @wish
        else
            render 'edit'
        end
    end


    def destroy
        @wish = Wish.find(params[:id])
        @wish.destroy

        redirect_to root_path
    end

    private
        def wish_params
            params.require(:wish).permit(:title, :text)
        end

end
