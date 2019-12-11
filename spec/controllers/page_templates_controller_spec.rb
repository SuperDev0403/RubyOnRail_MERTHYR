require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PageTemplatesController do

  # This should return the minimal set of attributes required to create a valid
  # PageTemplate. As you add validations to PageTemplate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PageTemplatesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all page_templates as @page_templates" do
      page_template = PageTemplate.create! valid_attributes
      get :index, {}, valid_session
      assigns(:page_templates).should eq([page_template])
    end
  end

  describe "GET show" do
    it "assigns the requested page_template as @page_template" do
      page_template = PageTemplate.create! valid_attributes
      get :show, {:id => page_template.to_param}, valid_session
      assigns(:page_template).should eq(page_template)
    end
  end

  describe "GET new" do
    it "assigns a new page_template as @page_template" do
      get :new, {}, valid_session
      assigns(:page_template).should be_a_new(PageTemplate)
    end
  end

  describe "GET edit" do
    it "assigns the requested page_template as @page_template" do
      page_template = PageTemplate.create! valid_attributes
      get :edit, {:id => page_template.to_param}, valid_session
      assigns(:page_template).should eq(page_template)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PageTemplate" do
        expect {
          post :create, {:page_template => valid_attributes}, valid_session
        }.to change(PageTemplate, :count).by(1)
      end

      it "assigns a newly created page_template as @page_template" do
        post :create, {:page_template => valid_attributes}, valid_session
        assigns(:page_template).should be_a(PageTemplate)
        assigns(:page_template).should be_persisted
      end

      it "redirects to the created page_template" do
        post :create, {:page_template => valid_attributes}, valid_session
        response.should redirect_to(PageTemplate.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved page_template as @page_template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PageTemplate.any_instance.stub(:save).and_return(false)
        post :create, {:page_template => { "title" => "invalid value" }}, valid_session
        assigns(:page_template).should be_a_new(PageTemplate)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PageTemplate.any_instance.stub(:save).and_return(false)
        post :create, {:page_template => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested page_template" do
        page_template = PageTemplate.create! valid_attributes
        # Assuming there are no other page_templates in the database, this
        # specifies that the PageTemplate created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PageTemplate.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => page_template.to_param, :page_template => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested page_template as @page_template" do
        page_template = PageTemplate.create! valid_attributes
        put :update, {:id => page_template.to_param, :page_template => valid_attributes}, valid_session
        assigns(:page_template).should eq(page_template)
      end

      it "redirects to the page_template" do
        page_template = PageTemplate.create! valid_attributes
        put :update, {:id => page_template.to_param, :page_template => valid_attributes}, valid_session
        response.should redirect_to(page_template)
      end
    end

    describe "with invalid params" do
      it "assigns the page_template as @page_template" do
        page_template = PageTemplate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PageTemplate.any_instance.stub(:save).and_return(false)
        put :update, {:id => page_template.to_param, :page_template => { "title" => "invalid value" }}, valid_session
        assigns(:page_template).should eq(page_template)
      end

      it "re-renders the 'edit' template" do
        page_template = PageTemplate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PageTemplate.any_instance.stub(:save).and_return(false)
        put :update, {:id => page_template.to_param, :page_template => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested page_template" do
      page_template = PageTemplate.create! valid_attributes
      expect {
        delete :destroy, {:id => page_template.to_param}, valid_session
      }.to change(PageTemplate, :count).by(-1)
    end

    it "redirects to the page_templates list" do
      page_template = PageTemplate.create! valid_attributes
      delete :destroy, {:id => page_template.to_param}, valid_session
      response.should redirect_to(page_templates_url)
    end
  end

end