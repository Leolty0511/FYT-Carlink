.class public Ly0/c$f;
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
    iput-object p1, p0, Ly0/c$f;->a:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Lu0/b;->j4:I

    if-nez v0, :cond_0

    invoke-static {}, Ly0/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, La/c;->q()I

    move-result v0

    invoke-static {v0}, La/c;->p(I)V

    :cond_0
    return-void
.end method
