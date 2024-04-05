class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[ show edit update destroy ]

  def index
    @fastag = Fastag.find(params[:fastag_id])
    @transactions = @fastag.transactions
  end

  def show
    @fastag = Fastag.find(params[:fastag_id])
    @transactions = @fastag.transactions
  end

  def new
    @fastag = Fastag.find(params[:fastag_id])
    @transaction = Transaction.new
    @vehicle=@fastag.vehicle
  end

  def edit
  end

  def create
    @fastag = Fastag.find(params[:fastag_id])
    @transaction = @fastag.transactions.new(transaction_params)
    if @transaction.save
      redirect_to vehicle_fastag_transactions_path(@fastag), notice: "Transaction was successfully created."
    else
      render :new
    end
  end


  def update
    if @transaction.update(transaction_params)
      redirect_to @transaction, notice: "Transaction was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_url, notice: "Transaction was successfully destroyed."
  end

  def filter_by_date_range
    start_datetime = DateTime.parse(params[:start_datetime])
    end_datetime = DateTime.parse(params[:end_datetime])
    # @vehicle = Vehicle.find_by(params[:vehicle_id])
    @fastag = Fastag.find(params[:fastag_id])
    @transactions = @fastag.transactions.where(created_at: start_datetime...end_datetime)
    render partial: 'transactions_table', locals: { transactions: @transactions }
  end

  private

  def set_transaction
    @fastag = Fastag.find(params[:fastag_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :location, :fastag_id)
  end
end
