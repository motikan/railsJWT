class UserTokenController < Knock::AuthTokenController
    before_action :set_algorithm

    private 

        def set_algorithm
            alg = params[:auth][:alg]
            if alg.nil? then
                return
            end

            # https://github.com/jwt/ruby-jwt#user-content-algorithms-and-usage
            Knock.setup do |config|
                case alg.downcase
                when 'none' then
                    config.token_signature_algorithm = 'none'

                when 'hs256' then
                    config.token_signature_algorithm = 'HS256'

                when 'hs384' then
                    config.token_signature_algorithm = 'HS384'

                when 'hs512' then
                    config.token_signature_algorithm = 'HS512'

                when 'rs256' then
                    config.token_signature_algorithm = 'RS256'

                when 'rs384' then
                    config.token_signature_algorithm = 'RS384'

                when 'rs512' then
                    config.token_signature_algorithm = 'RS512'

                end
            end
        end
end
