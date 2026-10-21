.class public Lk0/qn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qn;


# direct methods
.method public constructor <init>(Lk0/qn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qn$b;->a:Lk0/qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qn$b;->a:Lk0/qn;

    const/4 v1, 0x4

    iput v1, v0, Lk0/qn;->g:I

    .line 2
    invoke-static {}, Ll0/c0;->A0()V

    return-void
.end method
