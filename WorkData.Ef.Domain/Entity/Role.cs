using System.Collections.Generic;

namespace WorkData.EF.Domain.Entity
{
    public sealed class Role
    {
        public Role()
        {
            this.Privileges = new List<Privilege>();
            this.Users = new List<User>();
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

        public ICollection<Privilege> Privileges { get; set; }
        public ICollection<User> Users { get; set; }

        #endregion ���
    }
}