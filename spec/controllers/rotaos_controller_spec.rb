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

describe RotaosController do

  # This should return the minimal set of attributes required to create a valid
  # Rotao. As you add validations to Rotao, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RotaosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all rotaos as @rotaos" do
      rotao = Rotao.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rotaos).should eq([rotao])
    end
  end

  describe "GET show" do
    it "assigns the requested rotao as @rotao" do
      rotao = Rotao.create! valid_attributes
      get :show, {:id => rotao.to_param}, valid_session
      assigns(:rotao).should eq(rotao)
    end
  end

  describe "GET new" do
    it "assigns a new rotao as @rotao" do
      get :new, {}, valid_session
      assigns(:rotao).should be_a_new(Rotao)
    end
  end

  describe "GET edit" do
    it "assigns the requested rotao as @rotao" do
      rotao = Rotao.create! valid_attributes
      get :edit, {:id => rotao.to_param}, valid_session
      assigns(:rotao).should eq(rotao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rotao" do
        expect {
          post :create, {:rotao => valid_attributes}, valid_session
        }.to change(Rotao, :count).by(1)
      end

      it "assigns a newly created rotao as @rotao" do
        post :create, {:rotao => valid_attributes}, valid_session
        assigns(:rotao).should be_a(Rotao)
        assigns(:rotao).should be_persisted
      end

      it "redirects to the created rotao" do
        post :create, {:rotao => valid_attributes}, valid_session
        response.should redirect_to(Rotao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rotao as @rotao" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rotao.any_instance.stub(:save).and_return(false)
        post :create, {:rotao => {}}, valid_session
        assigns(:rotao).should be_a_new(Rotao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rotao.any_instance.stub(:save).and_return(false)
        post :create, {:rotao => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rotao" do
        rotao = Rotao.create! valid_attributes
        # Assuming there are no other rotaos in the database, this
        # specifies that the Rotao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Rotao.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => rotao.to_param, :rotao => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested rotao as @rotao" do
        rotao = Rotao.create! valid_attributes
        put :update, {:id => rotao.to_param, :rotao => valid_attributes}, valid_session
        assigns(:rotao).should eq(rotao)
      end

      it "redirects to the rotao" do
        rotao = Rotao.create! valid_attributes
        put :update, {:id => rotao.to_param, :rotao => valid_attributes}, valid_session
        response.should redirect_to(rotao)
      end
    end

    describe "with invalid params" do
      it "assigns the rotao as @rotao" do
        rotao = Rotao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rotao.any_instance.stub(:save).and_return(false)
        put :update, {:id => rotao.to_param, :rotao => {}}, valid_session
        assigns(:rotao).should eq(rotao)
      end

      it "re-renders the 'edit' template" do
        rotao = Rotao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rotao.any_instance.stub(:save).and_return(false)
        put :update, {:id => rotao.to_param, :rotao => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rotao" do
      rotao = Rotao.create! valid_attributes
      expect {
        delete :destroy, {:id => rotao.to_param}, valid_session
      }.to change(Rotao, :count).by(-1)
    end

    it "redirects to the rotaos list" do
      rotao = Rotao.create! valid_attributes
      delete :destroy, {:id => rotao.to_param}, valid_session
      response.should redirect_to(rotaos_url)
    end
  end

end
