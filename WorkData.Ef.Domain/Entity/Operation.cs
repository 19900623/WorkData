using System.Collections.Generic;

namespace WorkData.EF.Domain.Entity
{
    public sealed class Operation
    {
        public Operation()
        {
            Privileges = new List<Privilege>();
        }

        /// <summary>
        ///����ID
        /// </summary>

        public int OperationId { get; set; }

        /// <summary>
        ///��������
        /// </summary>

        public string Name { get; set; }

        /// <summary>
        ///��������
        /// </summary>

        public string Code { get; set; }

        /// <summary>
        ///״̬
        /// </summary>

        public bool Status { get; set; }

        #region ���

        public ICollection<Privilege> Privileges { get; set; }

        #endregion ���
    }
}