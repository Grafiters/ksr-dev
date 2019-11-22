class MembersController < ApplicationController
    def index
        @member = Member.all
    end
    def new
        @member = Member.new
    end
    def show
        @member = Member.find(params[:id])
    end
    def create
        @member = Member.new(params_a)
        if @member.save
            redirect_to members_path
        else
            redirect_to new_members_path
        end
    end
    def edit
        @member = Member.find(params[:id])
    end
    def update
        @member = Member.find(params[:id])
        if @member.update_attributes(params_a)
            redirect_to members_path
        else
            redirect_to edit_members_path
        end
    end
    def destroy
        @member = Member.find(params[:id])
        @member.destroy
        redirect_to members_path
    end
    private
        def params_a
            params.require(:member).permit(:name, :nim, :fakultas)
        end
        
end
