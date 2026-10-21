.class public Lk0/g2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/g2;


# direct methods
.method public constructor <init>(Lk0/g2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/g2$c;->a:Lk0/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/g2$c;->a:Lk0/g2;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/g2;->c3(Lk0/g2;I)V

    return-void
.end method
