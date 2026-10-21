.class public Ly0/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/c;


# direct methods
.method public constructor <init>(Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$g;->a:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/c$g;->a:Ly0/c;

    iget-object v0, v0, Ly0/c;->a:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/16 v2, 0x2b

    invoke-static {v2, v0}, Ly0/c;->x(II)V

    .line 2
    iget-object v0, p0, Ly0/c$g;->a:Ly0/c;

    iget-object v0, v0, Ly0/c;->a:[I

    aget v0, v0, v1

    const/16 v1, 0x2a

    invoke-static {v1, v0}, Ly0/c;->x(II)V

    return-void
.end method
