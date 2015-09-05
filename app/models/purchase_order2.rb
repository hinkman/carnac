class PurchaseOrder2 < ActiveRecord::Base
  self.table_name = "tpcom.purchaseorder2"

  default_scope lambda { |term| where("purchaseorderid = ?", "%#{term}%") }
  scope :mastpoid_w_poid, lambda { |term| where("purchaseorderid = ? AND masterpurchaseorderid is not null", "%#{term}%") }
end
