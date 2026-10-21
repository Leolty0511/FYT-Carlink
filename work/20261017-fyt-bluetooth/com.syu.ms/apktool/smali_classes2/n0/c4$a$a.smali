.class public Ln0/c4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c4$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4$a;


# direct methods
.method public constructor <init>(Ln0/c4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$a$a;->a:Ln0/c4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/c4$a$a;->a:Ln0/c4$a;

    iget-object v1, v0, Ln0/c4$a;->b:Ln0/c4;

    iget-boolean v0, v0, Ln0/c4$a;->a:Z

    invoke-virtual {v1, v0}, Ln0/c4;->B3(Z)V

    return-void
.end method
