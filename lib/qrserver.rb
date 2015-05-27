require 'qrserver/version'
require 'httparty'

module Qrserver
  include HTTParty

  # Const
  QRSERVER       = 'https://api.qrserver.com/v1'
  CREATE_QR_PATH = '/create-qr-code/'
  READ_QR_PATH   = '/read-qr-code/'

  # Base uri
  base_uri QRSERVER

  # Initialize
   def initialize(args = {})
     @size   = args.fetch(:size,   '200x200')
     @ecc    = args.fetch(:ecc,    'Q')
     @format = args.fetch(:format, 'png')
   end

  # Generate qr code
  def generate_qr_code(data)
    # self.class.get(CREATE_QR_PATH, build_query(data: data))
    data
  end

  # Generate qr code url
  def generate_qr_code_url(data)
    generate_qr_code(data).request.last_uri.to_s
  end

  private

  # Build query
  def build_query(query = {})
    query ||= {}
    query.merge!(size: @size, format: @format, ecc: @ecc)
    { query: query }
  end
end
