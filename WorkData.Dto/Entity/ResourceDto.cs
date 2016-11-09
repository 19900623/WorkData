using System.Collections.Generic;

namespace WorkData.Dto.Entity
{
    public sealed class ResourceDto
    {
        public ResourceDto()
        {
            this.Privileges = new List<PrivilegeDto>();
        }

        /// <summary>
        ///��ԴID
        /// </summary>

        public int ResourceId { get; set; }

        /// <summary>
        ///����ID
        /// </summary>

        public int? ParentId { get; set; }

        /// <summary>
        ///��Դ����
        /// </summary>

        public string ResourceName { get; set; }

        /// <summary>
        ///��Դ����
        /// </summary>
        public string ResourceUrl { get; set; }

        /// <summary>
        ///����
        /// </summary>

        public int Layer { get; set; }

        /// <summary>
        ///�Ƿ�����
        /// </summary>

        public bool IsLock { get; set; }

        /// <summary>
        ///��ԴͼƬ
        /// </summary>

        public string ResourceImg { get; set; }

        /// <summary>
        ///����
        /// </summary>

        public int Sort { get; set; }

        /// <summary>
        ///�Ƿ����Ӽ�
        /// </summary>

        public bool HasLevel { get; set; }

        #region ���

        public ICollection<PrivilegeDto> Privileges { get; set; }

        #endregion ���
    }
}