package com.example.nongsan.ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.nongsan.R;
import com.example.nongsan.data.dao.model.OrderDetail;
import com.example.nongsan.ui.adapter.OrderDetailAdapter;
import com.example.nongsan.ui.constract.OrderFragmentConstract;
import com.example.nongsan.ui.constract.OrderFragmentPresenter;

import java.util.List;

public class OrderFragment extends Fragment implements OrderFragmentConstract.IView {
    private OrderFragmentConstract.IPresenter mPresenter;
    private RecyclerView rcOrderDetail;
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View rootVIew = inflater.inflate(R.layout.fragment_order, container, false);

        initGUI(rootVIew);
        initData();

        return rootVIew;
    }

    private void initGUI(View rootVIew){
        rcOrderDetail = rootVIew.findViewById(R.id.rc_order_detail);
    }

    private void initData(){
        mPresenter = new OrderFragmentPresenter();
        mPresenter.setView(this);
        mPresenter.getOrderDetailList();
    }

    @Override
    public void setOrderDetailListToView(List<OrderDetail> orderDetailList) {
        OrderDetailAdapter adapter = new OrderDetailAdapter(getContext(), orderDetailList);
        rcOrderDetail.setAdapter(adapter);
        rcOrderDetail.setLayoutManager(new LinearLayoutManager(getContext()));
    }
}