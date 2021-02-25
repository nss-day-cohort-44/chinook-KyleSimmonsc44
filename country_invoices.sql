SELECT BillingCountry ,COUNT(InvoiceId) From Invoice
Group by BillingCountry