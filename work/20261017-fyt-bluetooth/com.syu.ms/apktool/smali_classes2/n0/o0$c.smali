.class public Ln0/o0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/o0;


# direct methods
.method public constructor <init>(Ln0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/o0$c;->a:Ln0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xc6

    .line 1
    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method
