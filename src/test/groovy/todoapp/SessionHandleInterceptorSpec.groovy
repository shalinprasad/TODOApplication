package todoapp


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(SessionHandleInterceptor)
class SessionHandleInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test sessionHandle interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"sessionHandle")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
