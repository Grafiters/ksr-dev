class MembersController < ApplicationController
    def index
        
    end
    def new
        @member = Member.new
    end
    def create
        @member = Member.new(params_a)
        if @member.save
            redirect_to members_path
        else
            redirect_to new_members_path
        end
    end
    private
        def params_a
            params.require(:member).permit(:name, :nim, :fakultas)
        end
        
end
