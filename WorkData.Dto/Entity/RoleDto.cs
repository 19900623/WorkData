using EFDTO.Entity;
using System.Collections.Generic;

namespace WorkData.Dto.Entity
{
    public sealed class RoleDto
    {
        public RoleDto()
        {
            this.Privileges = new List<PrivilegeDto>();
            this.Users = new List<UserDto>();
        }

        /// <summary>
        ///��ɫID
        /// </summary>

        public int RoleId { get; set; }

        /// <summary>
        ///��ɫ����
        /// </summary>

        public string Name { get; set; }

        /// <summary>
        ///��ɫ����
        /// </summary>

        public string Code { get; set; }

        /// <summary>
        /// �Ƿ�����
        /// </summary>
        public bool Status { get; set; }

        #region ���

        public ICollection<PrivilegeDto> Privileges { get; set; }
        public ICollection<UserDto> Users { get; set; }

        #endregion ���
    }
}