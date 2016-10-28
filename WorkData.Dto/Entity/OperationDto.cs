using System.Collections.Generic;

namespace WorkData.Dto.Entity
{
    public sealed class OperationDto
    {
        public OperationDto()
        {
            this.Privileges = new List<PrivilegeDto>();
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

        public ICollection<PrivilegeDto> Privileges { get; set; }

        #endregion ���
    }
}