using System;
using System.Collections.Generic;

namespace api.Models;

public partial class InfoView
{
    public int Id { get; set; }

    public int InformacoesId { get; set; }

    public int UsuarioId { get; set; }

    public DateTime DataVizualizacao { get; set; }

    public virtual Informaco Informacoes { get; set; } = null!;

    public virtual Usuario Usuario { get; set; } = null!;
}
