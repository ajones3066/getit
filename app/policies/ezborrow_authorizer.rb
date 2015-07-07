class EZBorrowAuthorizer < PatronStatusAuthorizer
  def initialize(user)
    super(user)
    @authorized_bor_statuses = %w{20 21 22 23 50 51 52 53 54 55 56 57 58 60 61 62 63 65 66 80 81 82}
  end
end