.class public Lk0/yn$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yn;


# direct methods
.method public constructor <init>(Lk0/yn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yn$g;->a:Lk0/yn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/yn$g;->a:Lk0/yn;

    const/4 v1, 0x4

    iput v1, v0, Lk0/yn;->q:I

    .line 2
    invoke-static {v0}, Lk0/yn;->l3(Lk0/yn;)V

    return-void
.end method
