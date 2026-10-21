.class Landroid/content/pm/ParceledListSlice$1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/content/pm/ParceledListSlice;

.field public final synthetic val$N:I

.field public final synthetic val$callFlags:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ParceledListSlice;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    iput p2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    iput p3, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result p2

    const-string p4, " of "

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing more @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    :goto_0
    iget p2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    const/high16 v1, 0x40000

    if-ge p2, v1, :cond_3

    .line 5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    invoke-static {p2}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    iget v1, p0, Landroid/content/pm/ParceledListSlice$1;->val$callFlags:I

    invoke-interface {p2, p3, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote extra #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ParceledListSlice$1;->this$0:Landroid/content/pm/ParceledListSlice;

    invoke-static {v2}, Landroid/content/pm/ParceledListSlice;->access$200(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget p2, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_5

    .line 9
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$000()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Breaking @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/content/pm/ParceledListSlice$1;->val$N:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return v0
.end method
