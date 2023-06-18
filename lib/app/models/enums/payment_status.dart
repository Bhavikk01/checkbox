enum PaymentStatus {
  success,
  pending,
  rejected,
  cancelled,
  stage1,
  stage2
}


const paymentStatusEnumMap = {
  PaymentStatus.success: 'success',
  PaymentStatus.pending: 'pending',
  PaymentStatus.rejected: 'rejected',
  PaymentStatus.cancelled: 'cancelled',
  PaymentStatus.stage1: 'stage1',
  PaymentStatus.stage2: 'stage2',
};