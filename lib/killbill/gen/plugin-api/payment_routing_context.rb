#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.routing.plugin.api'
      class PaymentRoutingContext

        include org.killbill.billing.routing.plugin.api.PaymentRoutingContext

        attr_accessor :user_token, :user_name, :call_origin, :user_type, :reason_code, :comments, :created_date, :updated_date, :tenant_id, :account_id, :payment_id, :attempt_payment_id, :payment_external_key, :transaction_id, :transaction_external_key, :transaction_type, :amount, :currency, :payment_method_id, :processed_amount, :processed_currency, :is_api_payment, :plugin_properties

        def initialize()
        end

        def to_java()
          # conversion for user_token [type = java.util.UUID]
          @user_token = java.util.UUID.fromString(@user_token.to_s) unless @user_token.nil?

          # conversion for user_name [type = java.lang.String]
          @user_name = @user_name.to_s unless @user_name.nil?

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = Java::org.killbill.billing.util.callcontext.CallOrigin.value_of( @call_origin.to_s ) unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = Java::org.killbill.billing.util.callcontext.UserType.value_of( @user_type.to_s ) unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = @reason_code.to_s unless @reason_code.nil?

          # conversion for comments [type = java.lang.String]
          @comments = @comments.to_s unless @comments.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = java.util.UUID.fromString(@tenant_id.to_s) unless @tenant_id.nil?

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = java.util.UUID.fromString(@payment_id.to_s) unless @payment_id.nil?

          # conversion for attempt_payment_id [type = java.util.UUID]
          @attempt_payment_id = java.util.UUID.fromString(@attempt_payment_id.to_s) unless @attempt_payment_id.nil?

          # conversion for payment_external_key [type = java.lang.String]
          @payment_external_key = @payment_external_key.to_s unless @payment_external_key.nil?

          # conversion for transaction_id [type = java.util.UUID]
          @transaction_id = java.util.UUID.fromString(@transaction_id.to_s) unless @transaction_id.nil?

          # conversion for transaction_external_key [type = java.lang.String]
          @transaction_external_key = @transaction_external_key.to_s unless @transaction_external_key.nil?

          # conversion for transaction_type [type = org.killbill.billing.payment.api.TransactionType]
          @transaction_type = Java::org.killbill.billing.payment.api.TransactionType.value_of( @transaction_type.to_s ) unless @transaction_type.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of( @currency.to_s ) unless @currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = java.util.UUID.fromString(@payment_method_id.to_s) unless @payment_method_id.nil?

          # conversion for processed_amount [type = java.math.BigDecimal]
          if @processed_amount.nil?
            @processed_amount = java.math.BigDecimal::ZERO
          else
            @processed_amount = java.math.BigDecimal.new(@processed_amount.to_s)
          end

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = Java::org.killbill.billing.catalog.api.Currency.value_of( @processed_currency.to_s ) unless @processed_currency.nil?

          # conversion for is_api_payment [type = boolean]
          @is_api_payment = @is_api_payment.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_api_payment)

          # conversion for plugin_properties [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@plugin_properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @plugin_properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for user_token [type = java.util.UUID]
          @user_token = j_obj.user_token
          @user_token = @user_token.nil? ? nil : @user_token.to_s

          # conversion for user_name [type = java.lang.String]
          @user_name = j_obj.user_name

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = j_obj.call_origin
          @call_origin = @call_origin.to_s.to_sym unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = j_obj.user_type
          @user_type = @user_type.to_s.to_sym unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = j_obj.reason_code

          # conversion for comments [type = java.lang.String]
          @comments = j_obj.comments

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = j_obj.tenant_id
          @tenant_id = @tenant_id.nil? ? nil : @tenant_id.to_s

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = j_obj.payment_id
          @payment_id = @payment_id.nil? ? nil : @payment_id.to_s

          # conversion for attempt_payment_id [type = java.util.UUID]
          @attempt_payment_id = j_obj.attempt_payment_id
          @attempt_payment_id = @attempt_payment_id.nil? ? nil : @attempt_payment_id.to_s

          # conversion for payment_external_key [type = java.lang.String]
          @payment_external_key = j_obj.payment_external_key

          # conversion for transaction_id [type = java.util.UUID]
          @transaction_id = j_obj.transaction_id
          @transaction_id = @transaction_id.nil? ? nil : @transaction_id.to_s

          # conversion for transaction_external_key [type = java.lang.String]
          @transaction_external_key = j_obj.transaction_external_key

          # conversion for transaction_type [type = org.killbill.billing.payment.api.TransactionType]
          @transaction_type = j_obj.transaction_type
          @transaction_type = @transaction_type.to_s.to_sym unless @transaction_type.nil?

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for payment_method_id [type = java.util.UUID]
          @payment_method_id = j_obj.payment_method_id
          @payment_method_id = @payment_method_id.nil? ? nil : @payment_method_id.to_s

          # conversion for processed_amount [type = java.math.BigDecimal]
          @processed_amount = j_obj.processed_amount
          @processed_amount = @processed_amount.nil? ? 0 : BigDecimal.new(@processed_amount.to_s)

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = j_obj.processed_currency
          @processed_currency = @processed_currency.to_s.to_sym unless @processed_currency.nil?

          # conversion for is_api_payment [type = boolean]
          @is_api_payment = j_obj.is_api_payment
          if @is_api_payment.nil?
            @is_api_payment = false
          else
            tmp_bool = (@is_api_payment.java_kind_of? java.lang.Boolean) ? @is_api_payment.boolean_value : @is_api_payment
            @is_api_payment = tmp_bool ? true : false
          end

          # conversion for plugin_properties [type = java.lang.Iterable]
          @plugin_properties = j_obj.plugin_properties
          tmp = []
          (@plugin_properties.nil? ? [] : @plugin_properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @plugin_properties = tmp
          self
        end

      end
    end
  end
end
