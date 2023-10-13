using _4LeggedFriendsServer.Enums;
using _4LeggedFriendsServer.Generics;
using _4LeggedFriendsServer.Models;

namespace _4LeggedFriendsServer.Queries
{
    public class IApiResponse<T>
    {
        public int Status { get; set; }
        public int? StatusOk { get; set; }
        public FieldMessage? Message { get; set; }
        public T? Value { get; set; }

        public static IApiResponse<T> GetDefault(Actions action)
        {
            var resp = new IApiResponse<T>();
            switch (action)
            {
                case Actions.CREATE:
                case Actions.UPDATE:
                    resp.Status = (int)ResponseStatus.CREATE;
                    break;
                case Actions.GET:
                    resp.Status = (int)ResponseStatus.OK;
                    break;
                case Actions.DELETE:
                    resp.Status = (int)ResponseStatus.OK;
                    break;
            }
            resp.StatusOk = resp.Status;
            return resp;
        }

        public void SetNotFound()
        {
            Status = (int)ResponseStatus.ERROR_NOT_FOUND;
            Message = new FieldMessage(string.Empty, GenericMessages.ERROR_NOT_FOUND);
        }

        public void SetErrorEntityValidation(string field, string message)
        {
            Status = (int)ResponseStatus.ERROR_ENTITY_VALIDATION;
            Message = new FieldMessage(field, message);
        }

        public void SetServerError()
        {
            Status = (int)ResponseStatus.SERVER_ERROR;
            Message = new FieldMessage(string.Empty, GenericMessages.ERROR_SERVER);
        }
    }
}
