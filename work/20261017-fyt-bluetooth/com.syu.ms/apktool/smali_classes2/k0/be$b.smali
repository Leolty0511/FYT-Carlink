.class public Lk0/be$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/be;


# direct methods
.method public constructor <init>(Lk0/be;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/be$b;->a:Lk0/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/be$b;->a:Lk0/be;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/be;->d3(Lk0/be;I)V

    return-void
.end method
