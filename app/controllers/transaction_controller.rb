class TransactionController < ApplicationController
  def new
    @transaction = current_user.transactions.build
  end

  def create
    @transaction = current_user.build_new_transaction(transaction_params, current_user)
    if @transaction.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount)
  end
end
