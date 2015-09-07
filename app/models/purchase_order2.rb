class PurchaseOrder2 < ActiveRecord::Base
  self.table_name = "tpcom.purchaseorder2"
  # attr_accessor PROVIDES

  default_scope lambda { |term| where("purchaseorderid = ?", "%#{term}%") }
  scope :mastpoid_w_poid, lambda { |term| where("purchaseorderid = ? AND masterpurchaseorderid is not null", "%#{term}%") }
  scope :poid_w_ponum_a_mcid, lambda { |term| where("purchaseordernumber = ? ANand (sellermembercompanyid = ? or buyermembercompanyid = ?) and purchaseorderid is not null", "%#{term}%") }


  ID_REGISTER[:MASTERPURCHASEORDERID] = {
      is_primary: true,
      PurchaseOrder2: {
          mastpoid_w_poid: {
              priority: 1,
              with: ['PURCHASEORDERID'],
              handle: 'mastpoid_w_poid'
          }
      }
  }

  ID_REGISTER[:PURCHASEORDERID] = {
      is_primary: true,
      PurchaseOrder2: {
          poid_w_ponum_a_bmcid: {
              priority: 1,
              with: ['PURCHASEORDERNUMBER','BUYERMEMBERCOMPANYID','BUYERMEMBERCOMPANYID'],
              handle: 'poid_w_ponum_a_mcid'
          },
          poid_w_ponum_a_smcid: {
              priority: 1,
              with: ['PURCHASEORDERNUMBER','SELLERMEMBERCOMPANYID','SELLERMEMBERCOMPANYID'],
              handle: 'poid_w_ponum_a_mcid'
          }
      }
  }

end
