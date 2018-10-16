class ProjectsController < ApplicationController
    def new
        @project = Project.new
        @task = @project.tasks.build
        @item = @task.items.build
    end

    private
        def project_params
        params.require(:project).permit(:name,
                                        :description,
                                        tasks_attributes: [
                                            :id,
                                            :description,
                                            :done,
                                            :_destroy,
                                            items_attributes: [
                                                :id,
                                                :description,
                                                :_destroy
                                                ]])
        end
end
