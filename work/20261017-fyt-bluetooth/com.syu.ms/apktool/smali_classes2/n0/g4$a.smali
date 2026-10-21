.class public Ln0/g4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/g4;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/g4;


# direct methods
.method public constructor <init>(Ln0/g4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/g4$a;->a:Ln0/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lo1/u;->a1()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
