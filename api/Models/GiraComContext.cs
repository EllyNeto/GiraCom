using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace api.Models;

public partial class GiraComContext : DbContext
{
    public GiraComContext()
    {
    }

    public GiraComContext(DbContextOptions<GiraComContext> options)
        : base(options)
    {
    }

    public virtual DbSet<InfoView> InfoViews { get; set; }

    public virtual DbSet<Informaco> Informacoes { get; set; }

    public virtual DbSet<Usuario> Usuarios { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=GiraCom;Username=postgres;Password=Alvarinhaarmonia1;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<InfoView>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("info_views_pkey");

            entity.ToTable("info_views");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.DataVizualizacao)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("data_vizualizacao");
            entity.Property(e => e.InformacoesId).HasColumnName("informacoes_id");
            entity.Property(e => e.UsuarioId).HasColumnName("usuario_id");

            entity.HasOne(d => d.Informacoes).WithMany(p => p.InfoViews)
                .HasForeignKey(d => d.InformacoesId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("info_views_informacoes_id_fkey");

            entity.HasOne(d => d.Usuario).WithMany(p => p.InfoViews)
                .HasForeignKey(d => d.UsuarioId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("info_views_usuario_id_fkey");
        });

        modelBuilder.Entity<Informaco>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("informacoes_pkey");

            entity.ToTable("informacoes");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("created_at");
            entity.Property(e => e.DataDeRealizacao)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("data_de_realizacao");
            entity.Property(e => e.Dataa)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("dataa");
            entity.Property(e => e.Descricao).HasColumnName("descricao");
            entity.Property(e => e.Evento)
                .HasMaxLength(50)
                .HasColumnName("evento");
            entity.Property(e => e.Foto).HasColumnName("foto");
            entity.Property(e => e.Organizacao)
                .HasMaxLength(50)
                .HasColumnName("organizacao");
            entity.Property(e => e.Titulo)
                .HasMaxLength(100)
                .HasColumnName("titulo");
            entity.Property(e => e.UpdatedAt)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("updated_at");
            entity.Property(e => e.Usuarioid).HasColumnName("usuarioid");

            entity.HasOne(d => d.Usuario).WithMany(p => p.Informacos)
                .HasForeignKey(d => d.Usuarioid)
                .HasConstraintName("informacoes_usuarioid_fkey");
        });

        modelBuilder.Entity<Usuario>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("usuario_pkey");

            entity.ToTable("usuario");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.DataDeNascimento).HasColumnName("data_de_nascimento");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasColumnName("email");
            entity.Property(e => e.NivelAcesso)
                .HasDefaultValue((short)0)
                .HasColumnName("nivel_acesso");
            entity.Property(e => e.Nome)
                .HasMaxLength(255)
                .HasColumnName("nome");
            entity.Property(e => e.Senha)
                .HasMaxLength(255)
                .HasColumnName("senha");
            entity.Property(e => e.Telefone)
                .HasMaxLength(13)
                .HasColumnName("telefone");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
