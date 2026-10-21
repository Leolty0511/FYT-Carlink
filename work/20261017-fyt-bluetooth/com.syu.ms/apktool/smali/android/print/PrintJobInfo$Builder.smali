.class public final Landroid/print/PrintJobInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/print/PrintJobInfo;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .locals 2

    .line 4
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    return-void
.end method

.method public setCopies(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$002(Landroid/print/PrintJobInfo;I)I

    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    return-void
.end method
