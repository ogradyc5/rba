class ProfilePolicy
    
    def index?
        @member
    end
    
    def create
        @member
    end 
    
    def show
        @member
    end
    
    def create?
        @member
    end
    
    def edit?
        @member && @member.profile == @record
    end
    
    def update?
        @member && @member.profile == @record
    end
    
    def destroy?
        @member && @member.profile == @record
    end 
end