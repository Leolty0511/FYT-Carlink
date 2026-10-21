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
    .line 3
    .line 4
    new-instance v0, Landroid/print/PrintJobInfo;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/print/PrintJobInfo;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintJobInfo;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public putAdvancedOption(Ljava/lang/String;I)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putAdvancedOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "key cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrintJobInfo;->access$502(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0}, Landroid/print/PrintJobInfo;->access$500(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;

    return-void
.end method

.method public setCopies(I)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$002(Landroid/print/PrintJobInfo;I)I

    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const-string/jumbo v1, "progress"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$302(Landroid/print/PrintJobInfo;F)F

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo$Builder;->mPrototype:Landroid/print/PrintJobInfo;

    invoke-static {v0, p1}, Landroid/print/PrintJobInfo;->access$402(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method
