console.log('Loading function');

exports.handler = async (event, context, callback) => {
    function AccountAlreadyExistsError(message) {
        this.name = "AccountAlreadyExistsError";
        this.message = message;
    }
    AccountAlreadyExistsError.prototype = new Error();

    console.log('Prueba JOSE desde AWS CLI');
    const error = new AccountAlreadyExistsError("Account is in use!");
    callback(error);
};