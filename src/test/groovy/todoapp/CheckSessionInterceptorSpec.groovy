package todoapp


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(CheckSessionInterceptor)
class CheckSessionInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test checkSession interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"checkSession")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
